.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
.super Ljava/lang/Object;
.source "NodeController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/render/NodeController$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract addChildAt(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getChildAt(I)Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getNodeLabel()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getView()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract moveChildTo(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract removeChild(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Z)V
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
