.class Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;
.super Ljava/lang/Object;
.source "KeyguardSecIndicationController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    .line 179
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    const-string/jumbo v1, "powersaving_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "psm_switch"

    .line 180
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "low_power"

    .line 181
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "emergency_mode"

    .line 183
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$102(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z

    goto :goto_1

    .line 182
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$002(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z

    :cond_2
    :goto_1
    return-void
.end method
