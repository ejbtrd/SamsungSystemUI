.class Lcom/android/systemui/settings/brightness/BrightnessSlider$3;
.super Ljava/lang/Object;
.source "BrightnessSlider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/brightness/BrightnessSlider;->showUsingHighBrightnessDialog()V
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

    .line 455
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 458
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1002(Lcom/android/systemui/settings/brightness/BrightnessSlider;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 p1, 0x0

    .line 459
    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$502(Z)Z

    .line 460
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$1900(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getDualSeekBarThreshold()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setValue(I)V

    .line 461
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$2000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "shown_max_brightness_dialog"

    const/4 v0, -0x2

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
