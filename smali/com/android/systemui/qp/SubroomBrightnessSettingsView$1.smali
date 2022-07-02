.class Lcom/android/systemui/qp/SubroomBrightnessSettingsView$1;
.super Ljava/lang/Object;
.source "SubroomBrightnessSettingsView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qp/SubroomBrightnessSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    invoke-static {p0, p2}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->access$000(Lcom/android/systemui/qp/SubroomBrightnessSettingsView;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    invoke-static {p0, p1}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->access$100(Lcom/android/systemui/qp/SubroomBrightnessSettingsView;Landroid/widget/SeekBar;)V

    return-void
.end method
