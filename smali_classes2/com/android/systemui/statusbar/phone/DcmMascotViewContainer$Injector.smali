.class public interface abstract Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;
.super Ljava/lang/Object;
.source "DcmMascotViewContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Injector"
.end annotation


# virtual methods
.method public abstract getParent()Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract invalidate()V
.end method

.method public abstract isDozing()Z
.end method

.method public abstract needsNotUpdatable()Z
.end method
