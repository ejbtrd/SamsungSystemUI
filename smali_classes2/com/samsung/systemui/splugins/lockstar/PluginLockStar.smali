.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
.super Ljava/lang/Object;
.source "PluginLockStar.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_LOCK_STAR"
    version = 0x3e9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;,
        Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_LOCK_STAR"

.field public static final MAJOR_VERSION:I = 0x1

.field public static final MINOR_VERSION:I = 0x1

.field public static final VERSION:I = 0x3e9


# virtual methods
.method public abstract getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getVersion()I
    .locals 0

    const/16 p0, 0x3e9

    return p0
.end method

.method public abstract init(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;)V
.end method

.method public abstract isLockStarEnabled()Z
.end method
