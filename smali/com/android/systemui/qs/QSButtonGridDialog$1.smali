.class Lcom/android/systemui/qs/QSButtonGridDialog$1;
.super Ljava/lang/Object;
.source "QSButtonGridDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSButtonGridDialog;->updateSeekBar(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSButtonGridDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSButtonGridDialog;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridDialog$1;->this$0:Lcom/android/systemui/qs/QSButtonGridDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 57
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string p1, "qs_button_grid"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
