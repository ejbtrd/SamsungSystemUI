.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;->INSTANCE:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->$r8$lambda$BivWj4Ks96oGJaimvchICf5H4YE(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
