.class public interface abstract Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;
.super Ljava/lang/Object;
.source "PanelCarrierLabelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PanelCarrierLabelParent"
.end annotation


# virtual methods
.method public abstract getMaxPanelHeight()I
.end method

.method public abstract getPanelCarrierLabelParent()Landroid/view/ViewGroup;
.end method

.method public abstract getViewContext()Landroid/content/Context;
.end method

.method public abstract isDarkPanelBgColor()Z
.end method

.method public abstract needToShowCarrierLabelByExpansion()Z
.end method

.method public abstract needToShowCarrierLabelByState()Z
.end method
