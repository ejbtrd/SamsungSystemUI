.class public interface abstract Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;
.super Ljava/lang/Object;
.source "QSClockBellTower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeAudience"
.end annotation


# virtual methods
.method public abstract getTicket()Ljava/lang/String;
.end method

.method public abstract notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V
.end method
