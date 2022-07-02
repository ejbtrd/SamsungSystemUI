.class Lcom/android/systemui/settings/brightness/BrightnessController$12;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/brightness/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$12;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 663
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$12;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 664
    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$1400(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shown_max_brightness_dialog"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 665
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController$12;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$1600(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    xor-int/2addr v0, v1

    invoke-virtual {v3, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 666
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$12;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$3100(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/BrightnessLogger;

    return-void
.end method
