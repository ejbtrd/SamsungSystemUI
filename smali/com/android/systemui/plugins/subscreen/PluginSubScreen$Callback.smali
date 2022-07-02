.class public interface abstract Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;
.super Ljava/lang/Object;
.source "PluginSubScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/subscreen/PluginSubScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getSubRoom(I)Lcom/android/systemui/plugins/subscreen/SubRoom;
.end method

.method public abstract getWallpaperUtils()Lcom/android/systemui/plugins/facewidget/PluginSystemUIWallpaperUtils;
.end method

.method public abstract isUserUnlocked()Z
.end method

.method public abstract onClockPageClicked()V
.end method

.method public abstract setEnableDLS(Z)V
.end method

.method public abstract shouldControlScreenOff()Z
.end method
