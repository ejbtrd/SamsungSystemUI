.class Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "MagnificationModeSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/accessibility/MagnificationModeSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;


# direct methods
.method constructor <init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method private performA11yAction(I)Z
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-static {v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$300(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 291
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-static {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$400(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    goto :goto_0

    .line 293
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->accessibility_action_move_up:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 294
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p0, v2, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$500(Lcom/android/systemui/accessibility/MagnificationModeSwitch;FF)V

    goto :goto_0

    .line 295
    :cond_1
    sget v1, Lcom/android/systemui/R$id;->accessibility_action_move_down:I

    if-ne p1, v1, :cond_2

    .line 296
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, v2, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$500(Lcom/android/systemui/accessibility/MagnificationModeSwitch;FF)V

    goto :goto_0

    .line 297
    :cond_2
    sget v1, Lcom/android/systemui/R$id;->accessibility_action_move_left:I

    if-ne p1, v1, :cond_3

    .line 298
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p0, p1, v2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$500(Lcom/android/systemui/accessibility/MagnificationModeSwitch;FF)V

    goto :goto_0

    .line 299
    :cond_3
    sget v1, Lcom/android/systemui/R$id;->accessibility_action_move_right:I

    if-ne p1, v1, :cond_4

    .line 300
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1, v2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$500(Lcom/android/systemui/accessibility/MagnificationModeSwitch;FF)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 256
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-static {v0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$002(Lcom/android/systemui/accessibility/MagnificationModeSwitch;Landroid/view/View;)Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$100(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 264
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 265
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-static {v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$200(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->magnification_mode_switch_click_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 267
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const/4 p1, 0x1

    .line 268
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 269
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_up:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 270
    invoke-static {v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$200(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_control_move_up:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 271
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_down:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 272
    invoke-static {v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$200(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_control_move_down:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 273
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_left:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 274
    invoke-static {v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$200(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_control_move_left:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 273
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 275
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_right:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 276
    invoke-static {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$200(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_control_move_right:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-static {v0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$002(Lcom/android/systemui/accessibility/MagnificationModeSwitch;Landroid/view/View;)Landroid/view/View;

    .line 283
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->performA11yAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 286
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
