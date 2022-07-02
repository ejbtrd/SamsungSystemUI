.class public interface abstract Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;
.super Ljava/lang/Object;
.source "ApplicationLightingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IApplicationLightingListener"
.end annotation


# virtual methods
.method public abstract startApplicationLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
.end method

.method public abstract stopApplicationLighting()V
.end method
