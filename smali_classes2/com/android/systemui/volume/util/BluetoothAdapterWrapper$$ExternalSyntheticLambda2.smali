.class public final synthetic Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->$r8$lambda$o6kpWEs740RKX5fRjILE4K8hqX8(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method
