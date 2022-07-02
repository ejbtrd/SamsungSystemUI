.class public interface abstract Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
.super Ljava/lang/Object;
.source "ControlsSpinner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/view/ControlsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SpinnerItemSelectionChangedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onItemSelectionChanged(Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;)V
    .param p1    # Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method
