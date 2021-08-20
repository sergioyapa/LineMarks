%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Line markers/indicators for MATLAB
%            Sergio Yanez-Pagans 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Defining function inputs for markers

function LineMarks(x_initial,x_end,y_pos,marks,mark_names,mark_size,line_style,line_width,tick_width,mark_color,mark_dx,mark_dy)

% x_initial: Initial position for common horizontal line
% x_end: Final position for common horizontal line
% y_pos: Vertical position for common horizontal line
% marks: Array (float) with all the horizontal values for the vertical ticks
% mark_names: Cell array with the labels for each mark (use '' for empty)
% mark_size: Markers size (font size)
% line_style: Line style for all the lines ('-' solid line, '--' dashed line, ':' dotted line, '-.' dash-dot line)
% line_width: Line width for all the lines
% tick_width: Vertical tick width
% mark_color: Color for both markers and lines
% mark_dx: Horizontal spacing between lines and labels
% mark_dy: Vertical spacing between lines and labels

    hold on
    plot([x_initial x_end],[y_pos y_pos],'Color',mark_color,'LineWidth',line_width,'LineStyle',line_style) % horizontal line

    for i = 1:length(marks(:)) 
    plot([marks(i) marks(i)],[y_pos y_pos-tick_width],'Color',mark_color,'LineWidth',line_width,'LineStyle',line_style) % veritcal marks
    end

    hold on
    y_pos_array = zeros(size(marks(:)));
    y_pos_array(:) = y_pos;
    text(marks+mark_dx,y_pos_array+mark_dy,mark_names,'Color',mark_color,'FontSize',mark_size)
end