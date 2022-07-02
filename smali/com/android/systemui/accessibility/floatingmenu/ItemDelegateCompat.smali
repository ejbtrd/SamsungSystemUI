.class final Lcom/android/systemui/accessibility/floatingmenu/ItemDelegateCompat;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
.source "ItemDelegateCompat.java"


# instance fields
.field private final mMenuViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 47
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/ItemDelegateCompat;->mMenuViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getPosition(Landroid/content/Context;)Lcom/android/systemui/accessibility/floatingmenu/Position;
    .locals 1

    const-string p0, "AccessibilityFloatingMenuPosition"

    const/4 v0, 0x0

    .line 186
    invoke-static {p1, p0, v0}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    new-instance p0, Lcom/android/systemui/accessibility/floatingmenu/Position;

    const/high16 p1, 0x3f800000    # 1.0f

    const v0, 0x3f666666    # 0.9f

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/Position;-><init>(FF)V

    return-object p0

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/accessibility/floatingmenu/Position;->fromString(Ljava/lang/String;)Lcom/android/systemui/accessibility/floatingmenu/Position;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 52
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 54
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/ItemDelegateCompat;->mMenuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/ItemDelegateCompat;->mMenuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 60
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v0, Lcom/android/systemui/R$id;->action_move_top_left:I

    sget v1, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_top_left:I

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 66
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v0, Lcom/android/systemui/R$id;->action_move_top_right:I

    sget v1, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_top_right:I

    .line 69
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 73
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v0, Lcom/android/systemui/R$id;->action_move_bottom_left:I

    sget v1, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_bottom_left:I

    .line 76
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 80
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v0, Lcom/android/systemui/R$id;->action_move_bottom_right:I

    sget v1, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_bottom_right:I

    .line 83
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 88
    sget p1, Lcom/android/systemui/R$id;->action_move_to_edge_and_hide:I

    .line 89
    sget v0, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_to_edge_and_minimize:I

    .line 90
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/ItemDelegateCompat;->mMenuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/ItemDelegateCompat;->mMenuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 115
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 117
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getAvailableBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 118
    sget v2, Lcom/android/systemui/R$id;->action_move_top_left:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v2, :cond_1

    .line 119
    invoke-virtual {v0, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    .line 120
    iget p0, v1, Landroid/graphics/Rect;->left:I

    iget p1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    .line 122
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_top_left:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v4

    .line 128
    :cond_1
    sget v2, Lcom/android/systemui/R$id;->action_move_top_right:I

    if-ne p2, v2, :cond_2

    .line 129
    invoke-virtual {v0, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    .line 130
    iget p0, v1, Landroid/graphics/Rect;->right:I

    iget p1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    .line 132
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_top_right:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v4

    .line 138
    :cond_2
    sget v2, Lcom/android/systemui/R$id;->action_move_bottom_left:I

    if-ne p2, v2, :cond_3

    .line 139
    invoke-virtual {v0, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    .line 140
    iget p0, v1, Landroid/graphics/Rect;->left:I

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    .line 142
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_bottom_left:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v4

    .line 148
    :cond_3
    sget v2, Lcom/android/systemui/R$id;->action_move_bottom_right:I

    if-ne p2, v2, :cond_4

    .line 149
    invoke-virtual {v0, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    .line 150
    iget p0, v1, Landroid/graphics/Rect;->right:I

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    .line 152
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_bottom_right:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v4

    .line 158
    :cond_4
    sget v1, Lcom/android/systemui/R$id;->action_move_to_edge_and_hide:I

    if-ne p2, v1, :cond_6

    .line 160
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/ItemDelegateCompat;->getPosition(Landroid/content/Context;)Lcom/android/systemui/accessibility/floatingmenu/Position;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/Position;->getPercentageY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandle(I)V

    .line 161
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/ItemDelegateCompat;->getPosition(Landroid/content/Context;)Lcom/android/systemui/accessibility/floatingmenu/Position;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandleLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    .line 162
    iget p0, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    if-ne p0, v4, :cond_5

    .line 163
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_to_right_edge_and_minimize:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_to_left_edge_and_minimize:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return v4

    .line 175
    :cond_6
    sget v1, Lcom/android/systemui/R$id;->action_move_out_edge_and_show:I

    if-ne p2, v1, :cond_7

    .line 176
    invoke-virtual {v0, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    return v4

    .line 180
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
