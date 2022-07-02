.class Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$3;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateMusicShareItems()V
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

    .line 950
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->access$3200(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailItems;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 954
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->access$3100(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 955
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->access$3200(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
