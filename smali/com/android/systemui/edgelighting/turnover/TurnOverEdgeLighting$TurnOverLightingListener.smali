.class public interface abstract Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;
.super Ljava/lang/Object;
.source "TurnOverEdgeLighting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TurnOverLightingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener$Requestor;
    }
.end annotation


# virtual methods
.method public abstract onIdle()V
.end method

.method public abstract onTurnOver(Z)V
.end method

.method public abstract onTurnRight(Z)V
.end method
