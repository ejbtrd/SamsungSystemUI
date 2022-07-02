.class public interface abstract Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;
.super Ljava/lang/Object;
.source "PanelModeController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PanelModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PanelModeChangeListener"
.end annotation


# virtual methods
.method public abstract onPanelModeChanged()V
.end method

.method public onUiModeChanged()V
    .locals 2

    const-string v0, "PanelModeController"

    const-string v1, "onPanelModeChanged"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-interface {p0}, Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;->onPanelModeChanged()V

    return-void
.end method
