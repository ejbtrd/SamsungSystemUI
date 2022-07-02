.class Lcom/android/systemui/accessibility/WindowMagnificationController$1;
.super Landroid/database/ContentObserver;
.source "WindowMagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/accessibility/WindowMagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationController;Landroid/os/Handler;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 309
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 310
    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$000(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_edit_magnification_size"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 309
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    .line 313
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$200(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$100(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->magnification_border_color_change:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$200(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$100(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->magnification_border_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 318
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1, v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$300(Lcom/android/systemui/accessibility/WindowMagnificationController;Z)V

    .line 319
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$400(Lcom/android/systemui/accessibility/WindowMagnificationController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 320
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$500(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    .line 321
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-static {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->access$600(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    :cond_2
    return-void
.end method
