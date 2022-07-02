.class Lcom/android/wm/shell/legacysplitscreen/DividerView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12

    .line 225
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 226
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v0

    const/16 v1, 0x1e

    .line 302
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    .line 299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x32

    .line 294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x3c

    .line 288
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x46

    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    .line 230
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v8, Lcom/android/wm/shell/R$id;->action_move_tl_full:I

    iget-object v9, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 231
    invoke-static {v9}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$000(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/android/wm/shell/R$string;->accessibility_action_divider_top_full:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 232
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v8, Lcom/android/wm/shell/R$id;->action_move_tl_70:I

    iget-object v9, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 234
    invoke-static {v9}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$100(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/android/wm/shell/R$string;->accessibility_action_divider_top_percent:I

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v5, v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v8, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 236
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v5, Lcom/android/wm/shell/R$id;->action_move_tl_60:I

    iget-object v8, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 237
    invoke-static {v8}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$200(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v4, v9, v6

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->showMiddleSplitTargetForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v4, Lcom/android/wm/shell/R$id;->action_move_tl_50:I

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 243
    invoke-static {v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$300(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v5

    sget v8, Lcom/android/wm/shell/R$string;->accessibility_action_divider_top_percent:I

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 246
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 247
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/wm/shell/R$id;->action_move_tl_40:I

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 248
    invoke-static {v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$400(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/wm/shell/R$string;->accessibility_action_divider_top_percent:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 250
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/wm/shell/R$id;->action_move_tl_30:I

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 251
    invoke-static {v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$500(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 250
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 254
    :cond_2
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/wm/shell/R$id;->action_move_rb_full:I

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 255
    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$600(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/wm/shell/R$string;->accessibility_action_divider_bottom_full:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void

    .line 280
    :cond_3
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v8, Lcom/android/wm/shell/R$id;->action_move_tl_full:I

    iget-object v9, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 281
    invoke-static {v9}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/android/wm/shell/R$string;->accessibility_action_divider_left_full:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 282
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v8, Lcom/android/wm/shell/R$id;->action_move_tl_70:I

    iget-object v9, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 284
    invoke-static {v9}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$1300(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/android/wm/shell/R$string;->accessibility_action_divider_left_percent:I

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v5, v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v8, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 286
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v5, Lcom/android/wm/shell/R$id;->action_move_tl_60:I

    iget-object v8, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 287
    invoke-static {v8}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$1400(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v4, v9, v6

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 290
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->showMiddleSplitTargetForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v4, Lcom/android/wm/shell/R$id;->action_move_tl_50:I

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 293
    invoke-static {v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$1500(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v5

    sget v8, Lcom/android/wm/shell/R$string;->accessibility_action_divider_left_percent:I

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 296
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 297
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/wm/shell/R$id;->action_move_tl_40:I

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 298
    invoke-static {v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$1600(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/wm/shell/R$string;->accessibility_action_divider_left_percent:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 297
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 300
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/wm/shell/R$id;->action_move_tl_30:I

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 301
    invoke-static {v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$1700(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 304
    :cond_6
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/wm/shell/R$id;->action_move_rb_full:I

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 305
    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$1800(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/wm/shell/R$string;->accessibility_action_divider_right_full:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 304
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 332
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getCurrentPosition()I

    move-result v2

    .line 334
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$2400(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    .line 335
    sget v1, Lcom/android/wm/shell/R$id;->action_move_tl_full:I

    if-ne p2, v1, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 337
    :cond_0
    sget v1, Lcom/android/wm/shell/R$id;->action_move_tl_70:I

    if-ne p2, v1, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_1
    sget v1, Lcom/android/wm/shell/R$id;->action_move_tl_50:I

    if-ne p2, v1, :cond_2

    .line 340
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_2
    sget v1, Lcom/android/wm/shell/R$id;->action_move_tl_30:I

    if-ne p2, v1, :cond_3

    .line 342
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_3
    sget v1, Lcom/android/wm/shell/R$id;->action_move_rb_full:I

    if-ne p2, v1, :cond_4

    .line 344
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_4
    sget v1, Lcom/android/wm/shell/R$id;->action_move_tl_60:I

    if-ne p2, v1, :cond_5

    .line 348
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFourthSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_5
    sget v1, Lcom/android/wm/shell/R$id;->action_move_tl_40:I

    if-ne p2, v1, :cond_6

    .line 350
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getSecondSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_7

    .line 354
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->startDragging(ZZ)Z

    .line 355
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const-wide/16 v4, 0xfa

    sget-object v6, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$2500(Lcom/android/wm/shell/legacysplitscreen/DividerView;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    return p3

    .line 358
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
