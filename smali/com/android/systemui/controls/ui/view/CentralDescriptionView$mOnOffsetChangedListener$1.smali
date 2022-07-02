.class final Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;
.super Ljava/lang/Object;
.source "CentralDescriptionView.kt"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/view/CentralDescriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/view/CentralDescriptionView;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/view/CentralDescriptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;->this$0:Lcom/android/systemui/controls/ui/view/CentralDescriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p1, p2

    .line 30
    div-int/lit8 p1, p1, 0x2

    .line 31
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;->this$0:Lcom/android/systemui/controls/ui/view/CentralDescriptionView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 32
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;->this$0:Lcom/android/systemui/controls/ui/view/CentralDescriptionView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 33
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;->this$0:Lcom/android/systemui/controls/ui/view/CentralDescriptionView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;->this$0:Lcom/android/systemui/controls/ui/view/CentralDescriptionView;

    int-to-float p1, p1

    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method
