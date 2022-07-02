.class public interface abstract Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;
.super Ljava/lang/Object;
.source "KeyguardListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/listener/KeyguardListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SPlugin"
.end annotation


# virtual methods
.method public abstract onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V
    .locals 0

    return-void
.end method

.method public abstract onRootViewAttached(Landroid/view/ViewGroup;)V
.end method
