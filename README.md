# LineMarks
Adds "line marks" in order to label and identify constant values or allows to highlight data intervals on MATLAB  

![LineMarks](https://user-images.githubusercontent.com/26829946/130281652-f0193a8d-50ff-4910-a5ea-74601546fc27.png)


# How to use this function:

Simply create your MATLAB figure and then execute the function "LineMarks" as follows:

LineMarks(x_initial,x_end,y_pos,marks,mark_names,mark_size,line_style,line_width,tick_width,mark_color,mark_dx,mark_dy)

where (see image below):

x_initial: Initial position for common horizontal line
x_end: Final position for common horizontal line
y_pos: Vertical position for common horizontal line
marks: Float (int or double) array with all the horizontal values for the vertical ticks
mark_names: Cell array with the labels for each mark (use '' for empty)
mark_size: Markers size (font size)
line_style: Line style for all the lines ('-' solid line, '--' dashed line, ':' dotted line, '-.' dash-dot line)
line_width: Line width for all the lines
tick_width: Vertical tick width
mark_color: Color for both markers and lines
mark_dx: Horizontal spacing between lines and labels
mark_dy: Vertical spacing between lines and labels

![LineMarks explanation](https://user-images.githubusercontent.com/26829946/130294044-8206779f-c43d-441c-bb60-2b9264a36a59.PNG)


# How to install this function:
1. This code was written using MATLAB (version 2021a). Download MATLAB on your computer or try MATLAB online
2. Download the file on this repository: "LineMarks.m"
4. Once downloaded, copy these function files to the MATLAB parent directory. On Windows, this is typically: C:\Users\YourUserName\Documents\MATLAB
5. That's it! You should be able to use this function


# Example:

y = linspace(-3,3,6); stem(y,'LineWidth',3,'Color','k'); % Creating and plotting some data

xlim([0.5 6.5]); ylim([-4.5 4.5]); 

LineMarks(4,6,3.8,[4,5,6],{'\alpha','\beta','\gamma'},20,'-.',2,0.5,'r',0,0.4) % LineMarks #1 (red)

LineMarks(1,3,-3.8,[1,2,3],{'A','B','C'},20,'-',2,-0.5,'b',0,-0.4) % LineMarks #2 (blue)

LineMarks(3,4,-2,[3,4],{'d',''},40,'--',2,-0.5,'#07b023',0.5,-0.6) % LineMarks #3 (green)

![LineMarks_Example](https://user-images.githubusercontent.com/26829946/130294114-2a708fb9-96e8-46df-9a2e-54b08813fc18.png)


# MATLAB File Exchange:

[![View LineMarks on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/97964-linemarks)
