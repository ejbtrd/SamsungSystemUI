.class public Lcom/android/systemui/controls/management/ControlsRequestDialog;
.super Lcom/android/systemui/util/LifecycleActivity;
.source "ControlsRequestDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/ControlsRequestDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsRequestDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsRequestDialog.kt\ncom/android/systemui/controls/management/ControlsRequestDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,228:1\n1711#2,3:229\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsRequestDialog.kt\ncom/android/systemui/controls/management/ControlsRequestDialog\n*L\n142#1,3:229\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/ControlsRequestDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callback:Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private control:Landroid/service/controls/Control;

.field private controlComponent:Landroid/content/ComponentName;

.field private final controller:Lcom/android/systemui/controls/controller/ControlsController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentUserTracker:Lcom/android/systemui/controls/management/ControlsRequestDialog$currentUserTracker$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dialog:Landroid/app/Dialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/ControlsRequestDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlsRequestDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->Companion:Lcom/android/systemui/controls/management/ControlsRequestDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/ui/util/ControlsUtil;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/management/ControlsListingController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsListingController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleActivity;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 52
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 53
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 63
    new-instance p1, Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;

    invoke-direct {p1}, Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->callback:Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;

    .line 67
    new-instance p1, Lcom/android/systemui/controls/management/ControlsRequestDialog$currentUserTracker$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controls/management/ControlsRequestDialog$currentUserTracker$1;-><init>(Lcom/android/systemui/controls/management/ControlsRequestDialog;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsRequestDialog$currentUserTracker$1;

    return-void
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/controls/management/ControlsRequestDialog;)Lcom/android/systemui/controls/controller/ControlsController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    return-object p0
.end method

.method private final isCurrentFavorite()Z
    .locals 7

    .line 141
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v0, v1}, Lcom/android/systemui/controls/controller/ControlsController;->getFavoritesForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 1711
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v3, v4

    goto :goto_1

    .line 1712
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 142
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v1

    .line 1711
    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v1, v4

    goto :goto_0

    .line 1712
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 142
    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v3

    goto :goto_0

    :cond_6
    const-string p0, "control"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    return v3

    :cond_7
    const-string p0, "controlComponent"

    .line 141
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final verifyComponentAndGetLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/controls/management/ControlsListingController;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "controlComponent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final createCustomDialog()Landroid/app/Dialog;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 175
    sget-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    const-string v8, "control"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup$default(Lcom/android/systemui/controls/ui/RenderInfo$Companion;Landroid/content/Context;Landroid/content/ComponentName;IIILjava/lang/Object;)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object v0

    .line 177
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->controls_custom_add_dialog:I

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 178
    sget v2, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/RenderInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/RenderInfo;->getForeground()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 180
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 183
    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    sget v0, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    sget v0, Lcom/android/systemui/R$id;->control:I

    invoke-virtual {v1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 187
    sget v3, Lcom/android/systemui/R$drawable;->control_custom_background_add_dialog:I

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 186
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 192
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/service/controls/Control;->getCustomColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 189
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->setBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/ColorStateList;)V

    .line 198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/systemui/R$string;->controls_add_devices_panel_title:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 199
    sget v2, Lcom/android/systemui/R$string;->controls_custom_dialog_add:I

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 200
    sget v2, Lcom/android/systemui/R$string;->controls_custom_dialog_cancel:I

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 203
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "dialog"

    .line 205
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 192
    :cond_0
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 184
    :cond_1
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 183
    :cond_2
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 175
    :cond_3
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_4
    const-string p0, "controlComponent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7
.end method

.method public final createDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    const/4 v0, 0x0

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    const-string v8, "control"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup$default(Lcom/android/systemui/controls/ui/RenderInfo$Companion;Landroid/content/Context;Landroid/content/ComponentName;IIILjava/lang/Object;)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object v1

    .line 147
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$layout;->controls_dialog:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 148
    sget v3, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 149
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/RenderInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/RenderInfo;->getForeground()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 150
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 153
    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v2, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    sget v1, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {v2, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    sget v0, Lcom/android/systemui/R$id;->control:I

    invoke-virtual {v2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->control_card_elevation:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    sget v1, Lcom/android/systemui/R$string;->controls_dialog_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 161
    sget v1, Lcom/android/systemui/R$string;->controls_dialog_message:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 162
    sget v0, Lcom/android/systemui/R$string;->controls_dialog_ok:I

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 163
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 165
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 168
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    .line 169
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const-string p1, "dialog"

    .line 170
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 154
    :cond_0
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_2
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "controlComponent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, -0x1

    if-ne p2, p1, :cond_9

    .line 214
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 215
    iget-object p2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 216
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    const-string v2, "control"

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 217
    :cond_0
    new-instance v3, Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "control.controlId"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "control.title"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "control.subtitle"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 219
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    if-eqz v4, :cond_2

    .line 220
    invoke-virtual {v3}, Lcom/android/systemui/controls/controller/ControlInfo;->getCustomControlInfo()Lcom/android/systemui/controls/controller/CustomControlInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/service/controls/Control;->getLayoutType()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/systemui/controls/controller/CustomControlInfo;->setLayoutType(I)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 214
    invoke-interface {p1, p2, v1, v3}, Lcom/android/systemui/controls/controller/ControlsController;->addFavorite(Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ControlInfo;)V

    goto :goto_1

    .line 217
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string p0, "controlComponent"

    .line 215
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_9
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsRequestDialog$currentUserTracker$1;

    invoke-virtual {p1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->callback:Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/util/UserAwareController;->getCurrentUserId()I

    move-result v0

    const-string v1, "ControlsRequestDialog"

    if-eq p1, v0, :cond_0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current user ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") different from request user ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    if-nez p1, :cond_1

    const-string p1, "Request did not contain componentName"

    .line 93
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.service.controls.extra.CONTROL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/service/controls/Control;

    if-nez p1, :cond_2

    const-string p1, "Request did not contain control"

    .line 99
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 98
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsRequestDialog$currentUserTracker$1;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->callback:Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 133
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 106
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onResume()V

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsRequestDialog;->verifyComponentAndGetLabel()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ControlsRequestDialog"

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The component specified ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid ControlsProviderService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string p0, "controlComponent"

    .line 109
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsRequestDialog;->isCurrentFavorite()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The control "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already a favorite"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const-string p0, "control"

    .line 116
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    if-eqz v1, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsRequestDialog;->createCustomDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/management/ControlsRequestDialog;->createDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v0

    .line 120
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_5

    goto :goto_2

    .line 126
    :cond_5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_2
    return-void
.end method
