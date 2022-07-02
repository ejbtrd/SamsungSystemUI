.class public interface abstract Lcom/android/systemui/controls/ui/CustomControlsUiController;
.super Ljava/lang/Object;
.source "CustomControlsUiController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract notifyToUpdateComponent(Landroid/content/ComponentName;)V
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract unsubscribeAndUnbindIfNecessary()V
.end method
