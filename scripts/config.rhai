let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_method = ["SLAM", "LIDAR", "Lidar-inertial", "Odometry", "mapping", "Visual-inertial", "GNSS"];
let titles = titles_method + titles_type;
let authors_array = ["Fu Zhang", "Wei Xu", "Jiarong Lin"];

let conferences = [
    // conference
    "ICRA", "IROS", "RSS", "CVPR", "ECCV", "ICCV",
    // journal
    "RA-L", "TRO", "IJRR", "TIE", "TIM", "TPAMI"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
