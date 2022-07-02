.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;
.super Ljava/lang/Object;
.source "NodeController.kt"


# virtual methods
.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getParent()Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
