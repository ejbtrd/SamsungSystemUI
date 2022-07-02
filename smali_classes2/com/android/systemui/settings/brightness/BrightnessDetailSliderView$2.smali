.class Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;
.super Ljava/lang/Object;
.source "BrightnessDetailSliderView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$300(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$500()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 140
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$600(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)I

    move-result p1

    if-gt p1, p2, :cond_1

    .line 141
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    return-void

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$800(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$800(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$800(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$900(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$900(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$1000(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z

    move-result p0

    const/4 p3, 0x0

    invoke-interface {p1, p0, p2, p3}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZIZ)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$1002(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 162
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$1002(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;Z)Z

    .line 164
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$900(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$900(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$1000(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->getValue()I

    move-result p0

    const/4 v1, 0x1

    invoke-interface {p1, v0, p0, v1}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZIZ)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1009"

    const-string v0, "location"

    const-string v1, "detail panel"

    const-string v2, "QUICK_PANEL_LAYOUT"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
