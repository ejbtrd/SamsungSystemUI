.class Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$8;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

.field final synthetic val$callSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Landroid/widget/Switch;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$8;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$8;->val$callSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$8;->val$callSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
