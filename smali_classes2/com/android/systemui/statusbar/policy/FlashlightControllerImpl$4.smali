.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;
.super Ljava/lang/Object;
.source "FlashlightControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "Flashlight_brightness_level"

    .line 410
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 411
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getFlashLightLevel()I

    move-result p1

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1402(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;I)I

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FlashlightLevel changed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1400(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlashlightController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
