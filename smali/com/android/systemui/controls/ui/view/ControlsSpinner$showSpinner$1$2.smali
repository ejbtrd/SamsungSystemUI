.class public final Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;
.super Ljava/lang/Object;
.source "ControlsSpinner.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/view/ControlsSpinner;->showSpinner(Ljava/util/List;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $itemAdapter:Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter<",
            "TT;>;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->$itemAdapter:Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->$itemAdapter:Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 109
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "null cannot be cast to non-null type T of com.android.systemui.controls.ui.view.ControlsSpinner"

    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 110
    invoke-virtual {p2, p3}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->setSelection(I)V

    .line 112
    invoke-static {p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->access$getPrevious$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 113
    invoke-static {p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->access$getSpinnerItemSelectedChangedCallback$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->access$getPrevious$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    move-result-object p3

    .line 113
    invoke-interface {p2, p3, p1}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;->onItemSelectionChanged(Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;)V

    .line 117
    :goto_0
    invoke-static {p0, p1}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->access$setPrevious$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;)V

    .line 119
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->access$getBadgeProvider$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lcom/android/systemui/controls/controller/util/BadgeProvider;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
