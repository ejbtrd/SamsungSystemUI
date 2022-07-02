.class public final Lcom/android/systemui/controls/ui/view/ControlsSpinner;
.super Landroid/widget/RelativeLayout;
.source "ControlsSpinner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;,
        Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;,
        Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;,
        Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
        ">",
        "Landroid/widget/RelativeLayout;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsSpinner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsSpinner.kt\ncom/android/systemui/controls/ui/view/ControlsSpinner\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,202:1\n256#2,2:203\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsSpinner.kt\ncom/android/systemui/controls/ui/view/ControlsSpinner\n*L\n92#1,2:203\n*E\n"
.end annotation


# instance fields
.field private badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private noSpinner:Landroid/widget/TextView;

.field private previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

.field private spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->initView()V

    return-void
.end method

.method public static final synthetic access$getBadgeProvider$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)Lcom/android/systemui/controls/controller/util/BadgeProvider;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    return-object p0
.end method

.method public static final synthetic access$getPrevious$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    return-object p0
.end method

.method public static final synthetic access$getSpinnerItemSelectedChangedCallback$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    return-object p0
.end method

.method public static final synthetic access$getSpinnerTouchCallback$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    return-object p0
.end method

.method public static final synthetic access$setPrevious$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    return-void
.end method

.method private final initView()V
    .locals 3

    .line 39
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    sget v1, Lcom/android/systemui/R$layout;->controls_spinner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 43
    sget v1, Lcom/android/systemui/R$id;->controls_app_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view.requireViewById(R.id.controls_app_spinner)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    iput-object v1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    .line 44
    sget v1, Lcom/android/systemui/R$id;->controls_spinner_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.requireViewById(R.id.controls_spinner_item)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    return-void
.end method

.method private final showSpinner(Ljava/util/List;Landroid/content/ComponentName;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    const-string/jumbo v2, "spinner"

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 78
    new-instance v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

    .line 79
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget v4, Lcom/android/systemui/R$layout;->controls_custom_spinner_item:I

    .line 81
    sget v5, Lcom/android/systemui/R$layout;->controls_custom_spinner_dropdown:I

    .line 82
    iget-object v6, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 78
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;-><init>(Landroid/content/Context;IILcom/android/systemui/controls/controller/util/BadgeProvider;)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 87
    iget-object v3, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    invoke-virtual {v3}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$dimen;->control_spinner_popup_side_offset:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 89
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    .line 256
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 92
    invoke-virtual {v5}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    :cond_1
    check-cast v1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 93
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 94
    iput-object v1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 96
    new-instance p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;-><init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V

    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    new-instance p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;-><init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V

    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    .line 87
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p0, "noSpinner"

    .line 75
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final showTextView(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    const-string v1, "noSpinner"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    if-nez p1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setVisibility(I)V

    return-void

    :cond_1
    const-string/jumbo p0, "spinner"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final setBadgeProvider(Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/util/BadgeProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "badgeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    return-void
.end method

.method public final setItems(Ljava/util/List;Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->showTextView(Ljava/util/List;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->showSpinner(Ljava/util/List;Landroid/content/ComponentName;)V

    :goto_0
    return-void
.end method

.method public final setSpinnerItemSelectedChangedCallback(Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    return-void
.end method

.method public final setSpinnerTouchCallback(Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    return-void
.end method
