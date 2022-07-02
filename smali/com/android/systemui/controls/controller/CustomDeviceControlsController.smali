.class public interface abstract Lcom/android/systemui/controls/controller/CustomDeviceControlsController;
.super Ljava/lang/Object;
.source "CustomDeviceControlsController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;
    }
.end annotation


# virtual methods
.method public abstract removeCallback()V
.end method

.method public abstract setCallback(Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;)V
    .param p1    # Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract start()V
.end method
