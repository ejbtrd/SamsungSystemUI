.class public Lcom/samsung/android/knox/custom/ShortcutItem;
.super Ljava/lang/Object;
.source "ShortcutItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/ShortcutItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCellX:I

.field private final mCellX_KEY:Ljava/lang/String;

.field private mCellY:I

.field private final mCellY_KEY:Ljava/lang/String;

.field private mColour:I

.field private final mColour_KEY:Ljava/lang/String;

.field private mFolderPosition:I

.field private final mFolderPosition_KEY:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mIcon_KEY:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private final mIntent_KEY:Ljava/lang/String;

.field private mMoreItems:I

.field private final mMoreItems_KEY:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private final mName_KEY:Ljava/lang/String;

.field private mParent:Ljava/lang/String;

.field private final mParent_KEY:Ljava/lang/String;

.field private mShortcutType:I

.field private final mShortcutType_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 319
    new-instance v0, Lcom/samsung/android/knox/custom/ShortcutItem$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/ShortcutItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/ShortcutItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    .line 53
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    const-string v1, "SHORTCUT"

    .line 56
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v1, "NAME"

    .line 59
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v2, "FOLDER_POS"

    .line 62
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v2, "INTENT"

    .line 65
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v2, "PARENT"

    .line 68
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v2, "CELLX"

    .line 71
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v2, "CELLY"

    .line 74
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v2, "COLOUR"

    .line 77
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    .line 79
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v2, "ICON"

    .line 80
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    .line 82
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    const-string v0, "MORE"

    .line 83
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "intent"

    .line 333
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 362
    new-array v2, v0, [B

    .line 365
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 366
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/custom/ShortcutItem$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/ShortcutItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconArray()[B
    .locals 3

    .line 247
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 249
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p0, :cond_0

    .line 251
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 255
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ShortcutItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shortcutType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 278
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    const-string v1, "intent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 280
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 283
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ShortcutItem;->getIconArray()[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 309
    array-length p2, p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 313
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
