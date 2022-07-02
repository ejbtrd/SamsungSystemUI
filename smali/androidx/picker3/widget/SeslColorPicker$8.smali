.class Landroidx/picker3/widget/SeslColorPicker$8;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker3/widget/SeslColorPicker;->initGradientColorSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 455
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 460
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v1, v0}, Landroidx/picker3/widget/SeslColorPicker;->access$302(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 461
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v1, v0}, Landroidx/picker3/widget/SeslColorPicker;->access$1202(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 463
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/4 p1, 0x0

    if-gez p2, :cond_1

    .line 465
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v2}, Landroidx/picker3/widget/SeslColorPicker;->access$800(Landroidx/picker3/widget/SeslColorPicker;)Z

    move-result v2

    if-ne v2, v0, :cond_2

    .line 466
    :cond_1
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v2}, Landroidx/picker3/widget/SeslColorPicker;->access$1100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, p1

    const-string v5, "%d"

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker;->access$1100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    if-eqz p3, :cond_3

    .line 471
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$500(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 474
    :cond_3
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$500(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p3, :cond_4

    .line 475
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p3}, Landroidx/picker3/widget/SeslColorPicker;->access$1000(Landroidx/picker3/widget/SeslColorPicker;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 476
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p3, p2}, Landroidx/picker3/widget/SeslColorPicker;->access$700(Landroidx/picker3/widget/SeslColorPicker;I)V

    .line 477
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p3, p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1002(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 479
    :cond_4
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1300(Landroidx/picker3/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 480
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1300(Landroidx/picker3/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 482
    :cond_5
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$000(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslOpacitySeekBar;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 483
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$000(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslOpacitySeekBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/picker3/widget/SeslOpacitySeekBar;->changeColorBase(I)V

    .line 485
    :cond_6
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1400(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 486
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$1400(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p0

    invoke-interface {p0, p2}, Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_7
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 492
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1202(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    return-void
.end method
