.class public interface abstract Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;
.super Ljava/lang/Object;
.source "NotificationLightingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INotificationLightingListener"
.end annotation


# virtual methods
.method public abstract startNotification(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
.end method

.method public abstract stopNotification(Z)V
.end method

.method public abstract updateText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z
.end method
