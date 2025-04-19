#!/usr/bin/env python3

from tkinter import * 
from matplotlib.figure import Figure
from matplotlib.backends.backend_tkagg import (FigureCanvasTkAgg, NavigationToolbar2Tk)

import PluginsPy

@PluginsPy.addRun
class TKinterExample():

    """
    TKinter Example

    """

    def __init__(self, kwargs):
        # the main Tkinter window
        self.window = Tk()

        # setting the title 
        self.window.title('Plotting in Tkinter')

        # dimensions of the main window
        self.window.geometry("500x500")

        # button that displays the plot
        plot_button = Button(master = self.window, 
                             command = self.plot,
                             height = 2, 
                             width = 10,
                             text = "Plot")

        # place the button 
        # in main window
        plot_button.pack()

        # the figure that will contain the plot
        self.fig = Figure(figsize = (5, 5),
                     dpi = 100)
        # adding the subplot
        self.plot1 = self.fig.add_subplot(111)

        # creating the Tkinter canvas
        # containing the Matplotlib figure
        self.canvas = FigureCanvasTkAgg(self.fig, master = self.window)  
        # placing the canvas on the Tkinter window
        self.canvas.get_tk_widget().pack()

        # creating the Matplotlib toolbar
        self.toolbar = NavigationToolbar2Tk(self.canvas, self.window)
        # placing the toolbar on the Tkinter window
        self.canvas.get_tk_widget().pack()

        # run the gui
        self.window.mainloop()
    
    def plot(self):
  
        # list of squares
        y = [i**2 for i in range(101)]
  
        # plotting the graph
        self.plot1.plot(y)

        # update
        self.canvas.draw()
        self.toolbar.update()
  
    
if __name__ == "__main__" :
    print("main")
