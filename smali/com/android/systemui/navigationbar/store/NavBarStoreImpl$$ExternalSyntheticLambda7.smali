.class public final synthetic Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band;

    check-cast p2, Lcom/android/systemui/navigationbar/bandaid/Band;

    invoke-static {p1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->$r8$lambda$X85KaQbHWsxjIgfbkwZAb0pxN_s(Lcom/android/systemui/navigationbar/bandaid/Band;Lcom/android/systemui/navigationbar/bandaid/Band;)I

    move-result p0

    return p0
.end method
