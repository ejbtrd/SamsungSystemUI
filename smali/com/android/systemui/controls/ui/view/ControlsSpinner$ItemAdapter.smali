.class final Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ControlsSpinner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/view/ControlsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dropDownLayout:I

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedIndex:I

.field private final parentContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/controller/util/BadgeProvider;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 139
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->parentContext:Landroid/content/Context;

    .line 140
    iput p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->viewLayout:I

    .line 141
    iput p3, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->dropDownLayout:I

    .line 142
    iput-object p4, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    const/4 p1, -0x1

    .line 145
    iput p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->mSelectedIndex:I

    .line 146
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    if-nez p2, :cond_0

    .line 166
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->dropDownLayout:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 167
    :cond_0
    sget p3, Lcom/android/systemui/R$id;->app_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    sget p3, Lcom/android/systemui/R$id;->controls_spinner_item:I

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    const-string/jumbo v2, "view"

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    goto :goto_2

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    if-nez v1, :cond_4

    goto :goto_2

    .line 177
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$id;->badge:I

    invoke-virtual {p2, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "view.requireViewById<BadgeView>(R.id.badge)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Lcom/android/systemui/controls/controller/util/BadgeProvider;->show(Landroid/content/ComponentName;Landroid/view/View;)V

    .line 178
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v3, p2, v0}, Lcom/android/systemui/controls/controller/util/BadgeProvider;->setDescription(Landroid/content/ComponentName;Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 183
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->mSelectedIndex:I

    if-ne v0, p1, :cond_6

    .line 184
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->parentContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$color;->control_spinner_item_text_color:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 185
    sget p1, Lcom/android/systemui/R$id;->check_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 186
    sget v0, Lcom/android/systemui/R$drawable;->ic_spinner_app_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    :cond_6
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    if-nez p2, :cond_0

    .line 156
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->viewLayout:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 157
    :cond_0
    sget p0, Lcom/android/systemui/R$id;->controls_spinner_item:I

    invoke-virtual {p2, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p0, "view"

    .line 160
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final setSelection(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->mSelectedIndex:I

    .line 150
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
