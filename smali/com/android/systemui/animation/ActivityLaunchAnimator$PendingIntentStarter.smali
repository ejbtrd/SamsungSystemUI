.class public interface abstract Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PendingIntentStarter"
.end annotation


# virtual methods
.method public abstract startPendingIntent(Landroid/view/RemoteAnimationAdapter;)I
    .param p1    # Landroid/view/RemoteAnimationAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation
.end method
