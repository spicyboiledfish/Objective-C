# Objective-C
iOS原生开发语言Objective-C。从0到1开始的demos。

## 5.8 对storyboard深入了解：

常见的报错：
* reason: '-[ViewController redBtn]: unrecognized selector sent to instance 0x7ff62ff05750'
多余的连线没有删除(创建了多余的IBAction)

* reason: '[<ViewController 0x7fbc19f06a90> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key label1.'
多余的连线没有删除（创建了多余的IBOutlet）

## 5.9 UILabel和UIImageView：
### UIKit中的常见控件：
* UILable 文本
* UIButton 按钮
* UIImageView 图片
* UIProgressView 进度条
* UISlider 滑块（声音、亮度滑块）
* UITextField 单行输入框
* UITextView 多行输入框
* UIActivityIndicator 加载圈圈
* UIAlertView 提示alert弹框
* UIActionSheet 底部弹框
* UIScrollView 滚动控件
* UIPageController 分页控件
* UITableView 表格控件
* UICollectionView 九宫格控件
* UIWebView 网页控件
* UISwitch 开关
* UISegmentControll 选项卡
* UIPickerView 选择器
* UIDatePicker 日期选择器
* UIToolbar 工具条
* UINavigationBar 导航条

### UILable的属性：
frame, backgroundColor, text, textColor,textAlignment, font, shadowColor, shadowOffset, lineBreakMode, numberOfLines

### UIImageView的属性：
frame, backgroundColor, image, contentMode, clipsToBounds (默认是false,不裁剪)

### contentMode属性：
* Scale to Fill 拉伸至全屏，图片会变形但没有空白（Redraw）UIViewContentModeScaleToFill
* Aspect Fit 维持原有图片比例大小，会出现空白   UIViewContentModeScaleAspectFit （以高度为基准进行比例适配，然后居中显示）
* Aspect Fill 在维持原有图片比例大小的基础上，去填充整个imageView大小，会有截断  UIViewContentModeScaleAcpectFill 
（当图片的本身高度或者宽度等于实际的框框大小中的宽度或者高度，就会停止这个比例适配，直接显示被截断的图片）
* Top 将图片的顶部显示出来
* Center 将图片的中间部分显示出来
* Bottom 将图片的下半部分显示出来
* Left/Right 以此类推

## 5.11 UIImageView纯代码中写法：
### UIImageView如何设置frame的四种方式 
CGRectMake UIImage initWith initWithImage

### 如何加载UIImageView中的图片资源的两种方式
imageNamed; imageWithContentsOfFile

### UIImageView中的路径
po NSHomeDirectory() 终端查看资源包内容
[NSBundle mainBundle] 这就是进到了ipa的资源包里 NSString类型





