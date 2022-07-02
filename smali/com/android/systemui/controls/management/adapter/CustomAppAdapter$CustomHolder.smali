.class public final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomAppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomHolder"
.end annotation


# instance fields
.field private final badge:Lcom/android/systemui/controls/ui/view/BadgeView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favorites:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final icon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isOOBE:Z

.field private final onOff:Landroid/widget/Switch;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onOffLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final switchCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

.field private final title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Landroid/view/View;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Lkotlin/jvm/functions/Function1;ZLcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Z
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favRenderer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "switchCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saLogger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 122
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 117
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 118
    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->switchCallback:Lkotlin/jvm/functions/Function1;

    .line 119
    iput-boolean p5, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->isOOBE:Z

    .line 120
    iput-object p6, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 121
    iput-object p7, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 123
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x1020006

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(com.android.internal.R.id.icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->icon:Landroid/widget/ImageView;

    .line 124
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(com.android.internal.R.id.title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->title:Landroid/widget/TextView;

    .line 125
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->favorites:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.favorites)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favorites:Landroid/widget/TextView;

    .line 126
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->on_off_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.on_off_switch)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOff:Landroid/widget/Switch;

    .line 127
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->on_off_switch_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.on_off_switch_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOffLayout:Landroid/widget/LinearLayout;

    .line 130
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->badge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.badge)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/systemui/controls/ui/view/BadgeView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->badge:Lcom/android/systemui/controls/ui/view/BadgeView;

    return-void
.end method

.method public static final synthetic access$getOnOff$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;)Landroid/widget/Switch;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOff:Landroid/widget/Switch;

    return-object p0
.end method

.method public static final synthetic access$getSaLogger$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;)Lcom/android/systemui/controls/ui/util/SALogger;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    return-object p0
.end method

.method public static final synthetic access$getTitle$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/ControlsServiceInfo;)V
    .locals 6
    .param p1    # Lcom/android/systemui/controls/ControlsServiceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    iget-object v1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    const-string v2, "model.componentName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->renderFavoritesForComponent(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favorites:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favorites:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOff:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    iget-object v4, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->getFavoriteCount(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOff:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->getGetActiveFlag()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    iget-object v5, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOffLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;Lcom/android/systemui/controls/ControlsServiceInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 162
    iget-object v1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->badge:Lcom/android/systemui/controls/ui/view/BadgeView;

    invoke-interface {v0, v1, v3}, Lcom/android/systemui/controls/controller/util/BadgeProvider;->show(Landroid/content/ComponentName;Landroid/view/View;)V

    .line 164
    iget-object p1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favorites:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-interface {v0, p1, v1, p0}, Lcom/android/systemui/controls/controller/util/BadgeProvider;->setDescription(Landroid/content/ComponentName;Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final getFavRenderer()Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    return-object p0
.end method

.method public final getSwitchCallback()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 118
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->switchCallback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final isOOBE()Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->isOOBE:Z

    return p0
.end method
