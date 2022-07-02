.class public interface abstract Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;
.super Ljava/lang/Object;
.source "IEdgeLightingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Requester"
.end annotation


# virtual methods
.method public abstract getShowConditionSetting()I
.end method

.method public abstract getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;
.end method

.method public abstract isKeyguardHideContent()Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardNotiOn()Z
.end method

.method public abstract isNotificationBarExpanded()Z
.end method

.method public abstract isSanitized(ILjava/lang/String;I)Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isUIControllerExist()Z
.end method

.method public abstract requestStopService()V
.end method

.method public abstract sendClickEvent(Ljava/lang/String;)V
.end method

.method public abstract sendContextLogging(Ljava/lang/String;Ljava/lang/String;)V
.end method
