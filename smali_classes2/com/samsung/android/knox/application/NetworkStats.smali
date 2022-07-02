.class public Lcom/samsung/android/knox/application/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mobileRxBytes:J

.field public mobileTxBytes:J

.field public uid:I

.field public wifiRxBytes:J

.field public wifiTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/samsung/android/knox/application/NetworkStats$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/NetworkStats$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 62
    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 68
    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 74
    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 62
    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 68
    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 74
    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/NetworkStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 102
    iget p2, p0, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
