function plotresult = MyPlotFunction(plotinfo)
    % Script file: MyPlotFunction.m
    %
    % Purpose:
    % Using structure array to plot a data set
    %
    % Record of revisions:
    % Date     Programmer   Description of change
    % ======== ============ =====================
    % 22/11/8 GeorgeDong32 Version 2.0
    %
    % Defined variables:
    % plotinfo plot信息Structure数组
    % plotresult plot结果返回值

    % 空数据返回错误
    if (isempty(plotinfo.x_data) || isempty(plotinfo.y_data))
        plotresult = false;
        error('Input empty data!')
    end

    % 有数据情况准备做图
    figure();
    % 判断绘制类型
    if (~isempty(plotinfo.type))

        if (plotinfo.type == "semilogx")
            semilogx(plotinfo.x_data, plotinfo.y_data)
        elseif (plotinfo.type == "semilogy")
            semilogy(plotinfo.x_data, plotinfo.y_data)
        elseif (plotinfo.type == "loglog")
            loglog(plotinfo.x_data, plotinfo.y_data)
        else
            plot(plotinfo.x_data, plotinfo.y_data)
        end

    else
        plot(plotinfo.x_data, plotinfo.y_data)
    end

    % 判断其他附加绘图条件
    if (~isempty(plotinfo.plot_title))
        title(plotinfo.plot_title)
    end

    if (~isempty(plotinfo.x_label))
        xlabel(plotinfo.x_label)
    end

    if (~isempty(plotinfo.y_label))
        ylabel(plotinfo.y_label)
    end

    if (~isempty(plotinfo.x_range))
        xlim(plotinfo.x_range)
    else
        axis 'auto x'
    end

    if (~isempty(plotinfo.y_range))
        ylim(plotinfo.y_range)
    else
        axis 'auto y'
    end

end
