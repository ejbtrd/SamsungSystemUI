.class public interface abstract Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;
.super Ljava/lang/Object;
.source "GlobalActionsDialogLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Action"
.end annotation


# virtual methods
.method public shouldShow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract showBeforeProvisioning()Z
.end method

.method public abstract showDuringKeyguard()Z
.end method
