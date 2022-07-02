.class Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;
.super Ljava/lang/Object;
.source "BrightnessDetailSliderView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->showUsingHighBrightnessDialog()V
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

    .line 312
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 315
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$802(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 p1, 0x0

    .line 316
    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$502(Z)Z

    .line 317
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$600(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->setValue(I)V

    .line 318
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$1100(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "shown_max_brightness_dialog"

    const/4 v0, -0x2

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
