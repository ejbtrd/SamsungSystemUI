.class public interface abstract Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;
.super Ljava/lang/Object;
.source "PluginMultiStar.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_MULTISTAR"
    version = 0x138f
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_MULTISTAR"

.field public static final VERSION:I = 0x138f


# virtual methods
.method public abstract getDockedStackListener()Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;
.end method

.method public abstract init(Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;)V
.end method

.method public abstract onLongPressRecents()Z
.end method
