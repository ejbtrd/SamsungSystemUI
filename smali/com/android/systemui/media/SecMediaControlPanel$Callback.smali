.class public interface abstract Lcom/android/systemui/media/SecMediaControlPanel$Callback;
.super Ljava/lang/Object;
.source "SecMediaControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SecMediaControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract showMediaOutput(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
.end method

.method public abstract toggle()V
.end method

.method public abstract updateMediaPlayerGuts(Z)V
.end method
