.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.source "NotificationCallTemplateViewWrapper.kt"


# instance fields
.field private appName:Landroid/view/View;

.field private final callLayout:Lcom/android/internal/widget/CallLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private conversationBadgeBg:Landroid/view/View;

.field private conversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private conversationTitleView:Landroid/view/View;

.field private expandBtn:Landroid/view/View;

.field private final minHeightWithActions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "row"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 37
    sget p3, Lcom/android/systemui/R$dimen;->notification_max_height:I

    invoke-static {p1, p3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->minHeightWithActions:I

    .line 38
    check-cast p2, Lcom/android/internal/widget/CallLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->callLayout:Lcom/android/internal/widget/CallLayout;

    return-void
.end method

.method private final resolveViews()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->callLayout:Lcom/android/internal/widget/CallLayout;

    const v1, 0x102026d

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CallLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "requireViewById(com.android.internal.R.id.conversation_icon)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/internal/widget/CachingIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    const v1, 0x102026f

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CallLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "requireViewById(com.android.internal.R.id.conversation_icon_badge_bg)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationBadgeBg:Landroid/view/View;

    const v1, 0x10202b9

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CallLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "requireViewById(com.android.internal.R.id.expand_button)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->expandBtn:Landroid/view/View;

    const v1, 0x10201e4

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CallLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "requireViewById(com.android.internal.R.id.app_name_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->appName:Landroid/view/View;

    const v1, 0x1020273

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CallLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "requireViewById(com.android.internal.R.id.conversation_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationTitleView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getMinLayoutHeight()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->minHeightWithActions:I

    return p0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->resolveViews()V

    .line 61
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 6

    .line 66
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/View;

    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->appName:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 69
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationTitleView:Landroid/view/View;

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addTransformedViews([Landroid/view/View;)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    if-eqz v2, :cond_2

    aput-object v2, v1, v4

    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationBadgeBg:Landroid/view/View;

    if-eqz v2, :cond_1

    aput-object v2, v1, v5

    .line 74
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->expandBtn:Landroid/view/View;

    if-eqz v2, :cond_0

    aput-object v2, v1, v0

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addViewsTransformingToSimilar([Landroid/view/View;)V

    return-void

    :cond_0
    const-string p0, "expandBtn"

    .line 74
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p0, "conversationBadgeBg"

    .line 73
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p0, "conversationIconView"

    .line 72
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string p0, "conversationTitleView"

    .line 69
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p0, "appName"

    .line 68
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
