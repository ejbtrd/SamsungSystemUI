.class Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$2;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 895
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->access$2900(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->access$3000(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$id;->available_devices_group:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 897
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->access$3100(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->access$3200(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
