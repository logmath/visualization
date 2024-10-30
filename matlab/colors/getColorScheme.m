% function colvect = getColorScheme(colorScheme)
% This function returns a color vector corresponding to the desired color
% scheme. *CBF* denotes color schemes that are colorblind friendly.
function colvect = getColorScheme(colorScheme,num)
    switch lower(colorScheme)
        case {1,'matlabdefault'} % *CBF* MATLAB Default 
            % Colors   R     G     B
            colvect = [0     0.447 0.741;...  blue    
                       0.850 0.325 0.098;...  orange
                       0.929 0.694 0.125;...  yellow
                       0.494 0.184 0.556;...  purple    
                       0.466 0.674 0.188;...  green
                       0.301 0.745 0.933;...  light blue
                       0.635 0.078 0.184;...  red
                       ];
        case 2 % *CBF* Zesty https://venngage.com/blog/color-blind-friendly-palette/
            % Colors   R   G   B
            colvect = [245 121 58 ;...        orange 
                       169 90  161;...        purple
                       133 192 249;...        sky blue
                       15  32  128;...        royal blue
                       ]/255;  
        case 3 % *CBF* Retro https://venngage.com/blog/color-blind-friendly-palette/
            % Colors   R   G   B
            colvect = [96  26  74 ;...        purple  
                       238 68  47 ;...        red orange
                       99  172 190;...        blue
                       230 230 9  ;...        yellow
                       ]/255;
        case 4
            % Colors   R   G   B
            colvect = [45  73  121;...        blue    
                       204 34  6  ;...        red
                       0   128 0  ;...        green
                       117 51  183;...        purple    
                       190 153 32 ;...        yellow
                       62  151 190;...        light blue
                       240 78  0  ;...        orange
                       198 9   151;...        pink
                       ]/255;
        case {5,'tolbright'} % *CBF* Tol Bright
            % Colors   R   G   B
            colvect = [68  119 170;...        blue
                       238 102 119;...        red/pink
                       34  136 51 ;...        green
                       204 187 68 ;...        yellow
                       102 204 238;...        cyan
                       170 51  119;...        purple
                       187 187 187;...        grey
                       ]/255;
        case {6,'tolvibrant'} % *CBF* Tol Vibrant
            % Colors   R   G   B
            colvect = [238 119 51 ;...        orange
                       0   119 187;...        blue    
                       238 51  119;...        magenta
                       204 51  17 ;...        red
                       0   153 136;...        teal
                       187 187 187;...        grey
                       51  187 238;...        cyan
                       ]/255; 
        case {7,'tolmuted'} % *CBF* Tol Muted
            % Colors   R   G   B
            colvect = [204 102 119;...        rose
                       51  34  136;...        indigo
                       221 204 119;...        sand
                       17  119 51 ;...        green
                       136 204 238;...        cyan
                       136 34  85 ;...        wine
                       68  170 153;...        teal
                       153 153 51 ;...        olive
                       170 68  153;...        purple
                       221 221 221;...        pale grey
                       ]/255; 
        case {8,'matlabclassic'} % MATLAB Classic
            % Colors   R G B
            colvect = [1 0 0;...              red    
                       0 1 0;...              green
                       0 0 1;...              blue
                       0 1 1;...              cyan
                       1 0 1;...              magenta
                       1 1 0;...              yellow
                       0 0 0;...              black
                       ]; 
        case {9,'sonicboom'} % *CBF* Sonic Boom
            % Colors   R   G   B
            colvect = [0   46  93 ;...        dark blue
                       256 100 100;...        salmon
                       100 100 256;...        periwinkle
                       100 256 100;...        lime green
                       256 200 0  ;...        gold
                       256 100 256;...        pink
                       100 256 256;...        cyan
                       256 150 0  ;...        orange
                       200 200 200;...        grey
                       150 0   256;...        purple
                       0   0   0  ;...        black
                       ]/256; 
        case {10,'t7a'}
            % Colors   R   G   B
            colvect = [0   0   0    ;...      black
                       65  113 161.5;...      blue (colorblind)
                       204 34  6    ;...      red
                       32  129 48   ;...      green (colorblind)
                       117 51  183  ;...      purple
                       112 128 144  ;...      slategray
                       30  144 255  ;...      dodgerblue
                       255 192 203  ;...      pink
                       148 0   211  ;...      darkviolet
                       0   245 255  ;...      turquoise
                       0   100 0    ;...      darkgreen
                       102 205 0    ;...      chartreuse3
                       238 201 0    ;...      gold2
                       255 128 0    ;...      orange
                       139 69  19   ;...      chocolate
                       ]/255;
        case {11,'okabeito'} % *CBF* Okabe Ito Color Palette https://jfly.uni-koeln.de/color/
            % Colors   R   G   B
            colvect = [213  94   0;...        vermillion
                         0 114 178;...        blue
                         0 158 115;...        bluish green
                       230 159   0;...        orange
                        86 180 233;...        sky blue
                       204 121 167;...        reddish purple
                       240 228  66;...        yellow
                         0   0   0;...        black
                       ]/255; 
        case {12,'medium1'} % *CBF* https://medium.com/@allieofisher/inclusive-color-palettes-for-the-web-bbfe8cf2410e
            % Colors   R   G   B
            colvect = [232 240 134;...        yellow
                       111 222 110;...        green
                       255  66  66;...        red
                       166 145 174;...        purple
                        35  95 164;...        light blue
                        10  40  75;...        dark blue
                       ]/255; 
        case {13,'medium2'} % *CBF* https://medium.com/@allieofisher/inclusive-color-palettes-for-the-web-bbfe8cf2410e
            % Colors   R   G   B
            colvect = [189 217 191;...        sage
                       146 144 132;...        grey
                       255 200  87;...        yellow
                       169 151 223;...        purple
                       229  50  59;...        red
                        46  64  82;...        steel blue
                       ]/255; 
        case {14,'medium3'} % *CBF* https://medium.com/@allieofisher/inclusive-color-palettes-for-the-web-bbfe8cf2410e
            % Colors   R   G   B
            colvect = [225 218 174;...        tan
                       255 147  79;...        orange
                       204  45  53;...        red
                         5 142 217;...        blue
                       132 143 162;...        gray
                        45  49  66;...        dark gray
                       ]/255; 
        otherwise
            if ~isnan(colorScheme)
                error('Unsupported color scheme')
            end % ~isnan(colorScheme)
            colvect = NaN;
    end % switch colorScheme

    if nargin > 1 % if option to return only one color
        colvect = colvect(num,:);
    end
end % function getColorScheme