.class Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "WindowMagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/accessibility/WindowMagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorWindowA11yDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationController;Lcom/android/systemui/accessibility/WindowMagnificationController$1;)V
    .locals 0

    .line 1133
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    return-void
.end method

.method private performA11yAction(I)Z
    .locals 3

    .line 1165
    sget v0, Lcom/android/systemui/R$id;->accessibility_action_zoom_in:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_0

    .line 1166
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$900(Lcom/android/systemui/accessibility/WindowMagnificationController;)F

    move-result p1

    add-float/2addr p1, v1

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1200(Lcom/android/systemui/accessibility/WindowMagnificationController;)Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1000(Lcom/android/systemui/accessibility/WindowMagnificationController;)I

    move-result v1

    .line 1168
    invoke-static {}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1100()Landroid/util/Range;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1167
    invoke-interface {v0, v1, p1}, Lcom/android/systemui/accessibility/WindowMagnifierCallback;->onPerformScaleAction(IF)V

    goto/16 :goto_0

    .line 1169
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->accessibility_action_zoom_out:I

    if-ne p1, v0, :cond_1

    .line 1170
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$900(Lcom/android/systemui/accessibility/WindowMagnificationController;)F

    move-result p1

    sub-float/2addr p1, v1

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1200(Lcom/android/systemui/accessibility/WindowMagnificationController;)Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1000(Lcom/android/systemui/accessibility/WindowMagnificationController;)I

    move-result v1

    .line 1172
    invoke-static {}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1100()Landroid/util/Range;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1171
    invoke-interface {v0, v1, p1}, Lcom/android/systemui/accessibility/WindowMagnifierCallback;->onPerformScaleAction(IF)V

    goto :goto_0

    .line 1173
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_up:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 1174
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1300(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    goto :goto_0

    .line 1175
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_down:I

    if-ne p1, v0, :cond_3

    .line 1176
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1300(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    goto :goto_0

    .line 1177
    :cond_3
    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_left:I

    if-ne p1, v0, :cond_4

    .line 1178
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1300(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    goto :goto_0

    .line 1179
    :cond_4
    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_right:I

    if-ne p1, v0, :cond_5

    .line 1180
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1300(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    .line 1184
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1200(Lcom/android/systemui/accessibility/WindowMagnificationController;)Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$1000(Lcom/android/systemui/accessibility/WindowMagnificationController;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/accessibility/WindowMagnifierCallback;->onAccessibilityActionPerformed(I)V

    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1137
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1138
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->accessibility_action_zoom_in:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 1140
    invoke-static {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$000(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_control_zoom_in:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1138
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1141
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->accessibility_action_zoom_out:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 1142
    invoke-static {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$000(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_control_zoom_out:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1141
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1143
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_up:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 1144
    invoke-static {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$000(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_control_move_up:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1143
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1145
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_down:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 1146
    invoke-static {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$000(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_control_move_down:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1145
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1147
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_left:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 1148
    invoke-static {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$000(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_control_move_left:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1147
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1149
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->accessibility_action_move_right:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 1150
    invoke-static {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$000(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_control_move_right:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1149
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1152
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$000(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->magnification_window_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getScale()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$800(Lcom/android/systemui/accessibility/WindowMagnificationController;F)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1158
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->performA11yAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1161
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
