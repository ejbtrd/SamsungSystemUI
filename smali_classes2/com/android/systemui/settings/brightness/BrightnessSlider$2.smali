.class Lcom/android/systemui/settings/brightness/BrightnessSlider$2;
.super Ljava/lang/Object;
.source "BrightnessSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/brightness/BrightnessSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 281
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;I)V

    .line 284
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result v1

    invoke-interface {p1, v1, p2, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZIZ)V

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$400(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$500()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$600(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouchSlider()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 290
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$700(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getDualSeekBarThreshold()I

    move-result p1

    if-gt p1, p2, :cond_2

    .line 291
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "ToggleSlider"

    const-string p2, "hideMirror : USING_HIGH_BRIGHTNESS_DIALOG"

    .line 292
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 295
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$900(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V

    return-void

    .line 298
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 299
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 304
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getDualSeekBarThreshold()I

    move-result p1

    if-gt p1, p2, :cond_4

    .line 305
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    goto :goto_0

    .line 307
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    .line 310
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 311
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateBrightnessSliderProgress(I)V

    .line 312
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1400(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getMax()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateBrightnessAnimation(II)V

    :cond_5
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 319
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$302(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)Z

    .line 327
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 329
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1500(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocationAndSize(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 335
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$302(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)Z

    .line 337
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {v2}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {p1, v1, v2, v3}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZIZ)V

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1600(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    .line 344
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1700(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ToggleSlider"

    const-string/jumbo v1, "slider disabled by onStopTrackingTouch()"

    .line 345
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1702(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)Z

    .line 347
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->updateSystemBrightnessEnabled(Z)V

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 352
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPPE1009"

    const-string v1, "location"

    const-string/jumbo v2, "quick panel"

    const-string v3, "QUICK_PANEL_LAYOUT"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 361
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    :cond_3
    return-void
.end method
