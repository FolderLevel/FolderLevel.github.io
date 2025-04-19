#!/usr/bin/env python3

import VisualLog.MatplotlibZoom as MatplotlibZoom
import VisualLog.LogParser as LogParser

from tkinter import * 

import PluginsPy

@PluginsPy.addRun
class TKinterBatteryZCV():

    """
    绘制PowerZ数据曲线

    @input(default/zcv.txt): zcv数据
    """

    def __init__(self, kwargs):

        filename = kwargs["input"]

        # 电池容量   开路电压  电池电阻 
        # {0.1mah, 0.1mv ,0.1mΩ}
        # 2705    42248   1025
        self.lineInfos = LogParser.logFileParser(
                filename,
                r'(\d+)\s+(\d+)\s+(\d+)',
                callback=self.defaultLineCallback
            )
        # for info in self.lineInfos:
        #     print(info)
        

        self.labels = ["Battery Capacity", "Open Circuit Voltage", "Battery Resistance"]
        self.customData = {"xlabel": "X", "ylabel": "Y"}
    
        # the main Tkinter window
        window = Tk()
        # setting the title 
        window.title('Plotting in Tkinter')
        # dimensions of the main window
        window.geometry("500x500")

        # button that displays the plot
        plot_button = Button(master = window, 
                             command = self.controller,
                             height = 2, 
                             width = 10,
                             text = "Plot")
        # place the button 
        # in main window
        plot_button.pack()

        # run the gui
        window.mainloop()
    
    def controller(self):
        print("controller")
        MatplotlibZoom.Show(callback=self.defaultShowCallback, rows = 1, cols = 1)
    
    def defaultShowCallback(self, fig, index):
        ax = fig.get_axes()[index]
        ax.set_xlabel(self.customData["xlabel"])
        ax.set_ylabel(self.customData["ylabel"])

        for i in range(len(self.lineInfos[0])):
            ax.plot(range(len(self.lineInfos)), [s[i] for s in self.lineInfos], label = self.labels[i])

        ax.legend()

    def defaultLineCallback(self, lineInfo):
        lineInfoFixed = []
        for index in range(len(lineInfo)):
            lineInfoFixed.append(float(lineInfo[index].strip()))
        
        return lineInfoFixed

if __name__ == "__main__" :
    print("main")
