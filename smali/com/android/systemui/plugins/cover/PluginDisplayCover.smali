.class public interface abstract Lcom/android/systemui/plugins/cover/PluginDisplayCover;
.super Ljava/lang/Object;
.source "PluginDisplayCover.java"

# interfaces
.implements Lcom/android/systemui/plugins/cover/PluginCover;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_DISPLAY_COVER"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_DISPLAY_COVER"

.field public static final VERSION:I = 0x1


# virtual methods
.method public onLockDisabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method
