import 'package:flutter/material.dart';
import 'package:iamsazid/views/ui_clone_tacker_screen.dart';

class UiClonePage extends StatelessWidget {
  const UiClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 20,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UICloneTrackerScreen(),
                  ),
                );
              },
              child: Text("Goto UI clone tracker"),
            ),
          ),

          // Grid to show all clone
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 350,
                mainAxisExtent: 250,
              ),
              itemBuilder:
                  (context, index) => SizedBox(
                    child: Column(
                      children: [
                        Card(
                          child: Image.network(
                            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQA7gMBIgACEQEDEQH/xAAcAAABBAMBAAAAAAAAAAAAAAAAAgQGBwEDBQj/xABVEAABAwICBAUNCwgJAwUAAAABAAIDBBEFBgcSITETQVGR0RQVFhciU1RhcYGSsdIjMjVCRFJVdJShojNFcnOCk7LwNDdDYmN1s8HhJjZWCCQlg4T/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAQIDBAUG/8QAKhEAAgEDAgUDBAMAAAAAAAAAAAECAxEhBBITFDEyUUJSYQVBgaEVIpH/2gAMAwEAAhEDEQA/ALxQhCAEIQgBCY4ti1Bg9ManE6qKnhGzWkda55Byrg9sfKf0xDzHoQEsQoj2yMp/S0XMehY7ZOVfpNnolAS9CiHbJyvxYi0/slHbIyzxVwP7JQEvQogdI+W+KrJ8jSjtjZeO6of6CAl6FEhpCy+flD/QShpAy+flLvRQErQosM/YB4UfRKz2eZftc1lvK0oCUXQoqdIOWx8vbzFIOkXLQ+XD0SgJahQ06S8sD5b+FIdpPyw3fWO9FATVCg/bTyt4a70Vg6VcqDfXH0UBOUKDdtbKd7dXn0UdtXKf0h+FATlChlLpPypU1DIWYmwOebAuFgFMY3tkYHsIc0i4I3FAKQhCAEIQgBCEIAQhCApLT1M/rrhsRN42wPeGnde42+Wy7GF6IsGrcNpaqSurQ+aFkjgC2wJAPIuJp6+GsP8Aqz/WFb+XfgDDfqsf8IQEF7TOCeH13O3oWO05gnh9fzt6FZEsmoxztUusL2aLkqsMaxXH35hbJE+ppKUSatgdbYN12jcDsQpOe0cjQ5go/OFdzt6EoaHsGG7EK7nb0KXtxOrc1gbSCR+3WIfs3bwneH1VVUPeKikMAABBJ3oSpXIQNEWDjdX1vO3oSholwgfL63nb0KwkIWIANFOFD5fW87ehKGivCh8urPw9CnqLoCCx6MMNjOtHiFY02tfuehIdoswtwsa+s529Cnt01lxClhkcyWdjXNIBHJfcgIMdEeEn84V3O3oSHaH8IP5xr+dvQp71fT8EJeGZqG3dcW02/wBklmJ0jwC2dpB3Wvyf8FAQF2hvBj+ca/0m9CQdC+CH844h6TehWJ1dT6jn8K3Vbe58lr+sLWMUo3e9nZuvx7kBXp0KYHx4hiHO3oXNrdD2FQcPwNXiD9RoLdjTc8m5Wuyup3mzZAdx57W9YSH4lRtcA6dgdyFQ1clMq6j0N4RPJqy1eIsHBtdfuRtIFxuTztIYD9IYh6TehWTBVQ1FuBeHAjWBAO5OOJEVSsecNKmR8PyeKAUM88wqtcP4axta26w8aufRlLJNkjCnyvL3cCBc71AP/UR+ZP8A7f8AZTzRZtyJhR/wlJJLEIQgBCEIAQhCAEIQUBSGnnbjeGg8dM/1hLw7SZjFNQ09OyCjLIo2sF2u3AW5UnTx8OYb9Xd6woRC60bP0QrwjuOfUVHBJosIaUca7xR+g7pWt+kTEZZmzSYfhrpW+9kdES5vkKg8QfLIxkbS573BrWjeSTYBPW4XiWz/ANlN3RkaO53lnv8AmWvDSOTmJsmY0mYxx09H6LulKbpMxfvFIP2XdKifY/jQlbE7DagSOaXBthtAtt3+Mc600mH4hVVMtNBRzSTxbZYw3azy33KypxKPUVSajSXi/eaT0XdKWNJOLd4pfRPSofTYLi9SL0+HTPGoH7B8UkgHybCk1OG4lSUzamqo5YYHGwkcBa/8gqVTiVdetbqTQaR8V7xS+ielKGkXFO8U3onpVfCVKE1lZUYmT1VX3FgjSJifeab0T0o7Pq9xuaalJ5SwqAidKbOp4MSj1db3E/Ge64tsaaltyaht60tmeKy+ympR5GFQATpYqFPAiQ9XW9xYDc7VY3U9MPIwpbM5VD3f0elJP9xQGGYSShp3ca3tqAyctL9l9gU8CJV62svUT3swqWusYKceRqUzNku8QUw8jFAZ6pwfck2tsSW1luO6cvEla2s/uWNFmqUG4ihHkCcszVK7e2PmKrOGsq6mqZR4bSyVdU8EiKPeByk8Q5l124FnQfmaH7U3pWEo007XO6lLUzV0cbTbiZxEYQSB3Jk3eZWfor/7Dwr9Uq0zHkbOGOinEmGRRCG9tWdrr386luW356y/gtLhcWV6OdlO3VEjsQDS7zWNlzytfB6MN23+xZSFBnY/nyMazsm0jwNpazExc+TuF2sqZnpcyQT8HFNS1lM/UqaOcWkhdyHlHIVBc76EIQAhCEAIKFgoCktPHw5hv1d/rCgcZsxvkCnmnj4cwz9Q71hQFh9zb5FvQWTg1/bE3xyOZIyRji17XBzSOUblPcTzzQ1NJWRU1LKx72t4ElvvS8jhue2xV8090PEn5qWg/lG+XhTs+5dEoJnBTqyh0JnPmrBZMQq52ts2pgLDrYewjWLmka4v7puO9c6jzFhxx/F62rE/W+ucHPpHxCYTAG9nEm7SDtaRuv4lHuqG32St/enoSWzNDC0yN2bPyp6FVQRd1ZOxIXZjohUxSQxzxxswd1EG77Pu4jj2jut604vjFBXYBQUsV+rKaGKJ+tTgE6t7+6XvbbusuKaloHcyNOy9hKehauuAse5fc/4n/CsopFXUk1YTrrPCeNIlqxIzVLXeUvvY8y0cJ41omYOI74VZ4VM+EWeEU3K7R7wyBMmXCI4VNxXYzrUTnyTNDOLf41l8zhUm/mTXDZSJrhJc90k2zfcq18GTg97OpVVHuLNqZCffYrXLLeOMH+d6aOls8geRHImnTdi2NDUcZpcXrHMBmMzWF9tpaATZSCgzVVVOPz0c2HvjpGAmOQtcHu28nOqqydnKty5BUw0sFPI2Z4kJlve+0cRUjh0mV/Cuk6gw9sjtjnhrtY+e685wbbPoVVjCKV7WLSp68TTNYKaoaCbazoyAPHdPSVVkekvETvpaS/kd0pzHpFrjbWpab8XSnBn4I56iurJniuKvoqqKFsUbw9oN3usdpts5VwBG2n0vgwjU6pwZ7ptUW1y2RgaT5LlN4s+TP99DB5r9KbYNiZxXSnTykAauDSjZ+sjVZU5RV2aUtTTqu0SxxuWUIVDoBCEIAWCsoQFI6efhrDfq7vWFXYlbqgA32Kw9PezGcOI39TP9YVpYBhWHPwPD3PoKVzjTRkkwtJPcjxLSnU2GFejxUkeauFbyo4Ucq9RuwrC2gk4dR2G38g3oTG2BeAU32ZvQplqox7jCP06Uu081cK1HCtXpa2BeAU32ZvQsWwL6PpvszehRztPz+y38XU+f8PNXCjlWOFbyr0tbAvo+m+zN6Fsp6fBqmTUjw+lva+2naP8AZStZB4Qf0yaV2eZOFHKjhRyr0vXDAqCURVFBTBxbrDVpmnZzJv1blvwCn+yDoV+Y+DLk4r1Hm8zAcaxw7eVekerMtn5BT/ZB0INZlsfIIPsg6E5j4HKR9x5u6oby/egStPxgvSHVmW/AIPsg6F0hQ4OaUVIw+kERZrX6nbe3MnMfBZaOPk81087GPNjva1IiqQJ761t69Gh2Aj5BT/ZR0LGtgA+QUw//ACjoUc3Ey5KF+483yVIs3atLqhpB28a9La2A+AU32UdCL4Bv6gpvsrehQ9XFllpIL1HnOheNZu7VcBe/lKn0j6KNssjcUwl7w11mMsG7GgiwvvN7X8RCiubHwjNmKmBobF1S7Ua1uqALniTLq4D4h2eP/hbQzG5lVk41GiV10FDNES3FKVr4mPkaxrxZxPdWvffc2+7iXDhqC4ga1rph1e3Z3B2brkdCTS1GtOCTs279q1i7HJVTllI7Iqy2MOB49qkWjCo6o0iB172wuYfjjUFdUgQEX37dilmhiThM/vJ4sNm/jiVNQ1sN/p8HGrdl8oQhcJ7YIQhACEIQFIafPhjDvq0nrCt7LvwBhv1WP+EKodPnwvhv1aT1hW9l34Aw36rH/CEA9n/JSfolQqdt5CNdw2cTyPUQprP+Rk/RKhkovISAfe8h6Fw6vuR26TozXGGh4deQ8g4U+0nJmZqa7rtGsB3Q4ybAc5TcNPI6/wCiehYqYZHU7QAXHhYzqjiAeCVyxSlJJs6ptxg2lkcmaLghIHjVcO5PzvIn+AStmqQ9h2GK5bxi9io5HTzDU9zfsay/m1+kLt5UjfHUu4RpaeCbv8TQCuqNGMGpKVzjlqJyTi42NOcf6ZH+pHrKjeqOIv8ATPSpJnD+nxjj4EesqP8ABuO06viXaeZLuYhrWnaXSXHE156VtnqIaWMSSusy4BO9JEbr37nZ/PIsVlMKymdFIdW+0EcRT7lcD18Fo2yRvD2naHDdZTFvwA36uPUoLRQugo4oLhxYNpA8qnbfgBv1cepJSTvZWNVFK9ncic7Rwrj3Q2cTyPUVrLLkka3LYSO6VunDi+42/snoSNUke9NuK7T0LjRgOIn6w3btl+IrZxFMqiKZ9KWQPERcQNY3u0cZA5U3bh9Xwj3mvcdbeNW4APvrLWFFzV7mcpZNOUMBwbFq7MtRiuGwVckNe4NdI25AsTZdPrJlDd2N01/1RWnRtDwXZRCx19Wvc1tz/d2XXX61Skk3Zc/32pWnUhZQPV09OjKN6iyMex7Kbh/23R+gEdYcott/07Rtvu2AJ51pm+cz02pE2DzyRtY0xizib67fmkf7rKNWu2ru34Np0tMk7JP8jZuAZRfII+x2jJv8zdtsmmHYPh+D6WKeHC6OGkhfg0riyJtgTwse1dSkwephqY5XOjIDhezxyAcviWmX+t+m/wAjl/1Y10wc87nc5modYxsTZCAhaFQQhCAEFCCgKQ0+fC+G/VpPWFb+XvgDDfqsf8IVQ6ewTjGGAcdPJ6wpvgukHKlNg9DBNjMLJY6djXtLH7CGi43ICavbrAjiK5nWmn+fN93QuT2x8ofTcHoP9lHbGyh9Nweg/wBlUlTjLuRaM5R7WdfrTT/Pm/nzI61U/wA+b+fMuR2xsofTcHoP9lHbGyh9Nweg/wBlV4FPwW41TydfrVT/AD5v58y201FDTS67HSE2t3Q/4XD7Y2UPpuD0H+ym8mkbJzZdZ+Y4mg/F1HW/hUqjBO6QdWbVmzvYjhNNiEzZZ3zNcG6oDNgt5wU17GaHv1Vzj2VyG6ScmDfmaM/sO9lA0k5Muf8AqaPbu7h2z8K0MdqOsctUI3zVXOPZWRlqh79Vc49lcjtk5N4szR+g72UO0k5MIAGZ4xbjDHbfwqLDYjsDLlEL2mqdvjHsrqCCNtGKUOfqBmpe223MomdJOTCdmZox4gx3soOknJhAtmaMEcYY7b+FLEpJHf6zUvfJ/wCfMjrNS99n+7oXDZpNyW1oBzDA48pY+/8ACl9s/JX0/T+g/wBlV2R8EbI+Ds9ZqXvk/wB3QjrNS/Pm+7oXG7Z+Svp+n9B/so7Z2Szux+n9B/spsj4GyPgY5LY2KfOkbL6ra+RoLt/vVzNV997/ADOPSn+jytpa+TN9dRSNnpp8QdJG8A2e3U8afmupwSOtlL93SkpKOCk+pwWmQE7z5SsTyTNgkMTbyBt2g8ZUi6tpLXNDSA8lgsmtomt13UdGG/OI2KvERldeTj0UnCmkl1ODeXNL28m1dKX+t+l/ySX/AFY0uHFKB08DW01GXSPAbqjx2WuT+t+l/wAkl/1WK6d8m0JKV7E2QhCsaAhCwTbegMrBNhc2TGrxOKG4Z7o7xbguFXYhPM1z5NYtH9nGN6AhumHB8QxzFKGTCqc1LIoXNeWOGwkjl8igHYfmL6Jffk12e0rFxaox2qBjo6GaCHdcEB5HPsXFdl3FGhjhSue47SGkG3lugIp2HZj1b9aX/vGe0sjJmZD73CHkDfZ7PaU3psHxSoe/q6i1mlmx8jw3UtuDQDs8gCS3BsWipY4YaSdzS7WljcWNaeQXDrkICFdhuZPoh/ps6Vk5LzKD8EP9NntKeDAayKqjnhonRa0ZJZCWSFjuTuzYea9uVNnYLik1OWT4TK+e+yfhxrH9I3N/uQEN7C8y8WDvI5eEZ0po/JGapJCRgkjuTu493pKx6vA8TjniDaV1dGIxrh2q2Np/ugEbRyrVFgeKN6oZHRVdNEe6jbG5hdfkL7g2QFdjIuayL9Y5P3kftLPYJmu3wI/95Ht/ErBOC4rqtkhwXgalvx2vYWkfokkX8a2OwPEDIGvwqoq4iAS+aRrZG+JpDiA3zICuxkfNZaf/AIJ/7yOw/GsHImawQOsUlz/ix+0rFjwbGTG4z0M7tQARQ+58G4C+x9nC+9I6yYw0BtNhUsAcQZtSVhud/c3N224rFAV6ciZsB+BHi3GZI/aWTkPNmwjA5LfrY/aVjOwPEWT60eDzScGPc5XPY2RzvnPGsQ5Ziy7irqGplqKR8lSHe5wSFupZ29zLOs0/cgK4GQ82HdgUlv1kftLHYJmz6DeD45Y/bViPwLGHzRNjw2qgpWt1dVr4y6xO3bca3kK2TZfxIU80tPhuq6RwYGDVBawceqbjb4igK3ORs1j8xS/vI/aWOwbNNgTgjt+y8sftKxIMv4i9sInoJuFMoL5ZXDY3i7q5P3FbHZfrzXOM8T3wF5cWauswncDbYCgHehGjnp8ExyiqYzFUR1XBvYSO5Op4lL+x+U75WX8pVc6P814ZlLHMdwXMEvUTpqoSRzPadQbPem19XZY3PLvVjdm2UP8AyXDftrelVlFS6lZRUuodj8mz3WPnKxJlx0oaJHwua03AIO9BzvlDd2S4d9sHSgZ2yh/5Lh32wdKhQSd0V4UTMGXOBljezgBqODu5bt2LnSf1v0v+Ry/6rE/dnjKDBrdkmHdyCdlWD919qimV8zUmbNLEtZhAe+hpcJkiEzmFuuTIw3sdoHJfkKu231ZaMFDoWkhCELDWqq2U7bn79y5NRiTJ9nVDbcg2Bd0xNO8JHU8Z+KFIIvJLGTYP2rSLFx1TcqVOoKd3vomkeRa3YTRO307OZMAjTXtHxhzJYcL7Cu8cDoD8nZzJJwDDz8namAcYHlISg4cdl1Tl7Dj/AGASexvDfBmJgHOD2fOShIwfGCfdjWGcdMxY7GcL8GZzKcAZmaPjeOdZE0Pzxzp12MYX4MzmR2MYX4LHzJgDYVEPfGrIqIe+MTjsYwvwWPmR2MYX4LHzJgGgVMPfWc6U2ph74xbexjC/BY+ZY7F8L8GZzJgCeqYeORiyKiHvjErsYwzwZnMjsYwvwZiYAdUQ98ZzrBnhItwjfMs9jGF+DMWexnC/Bm8yYBpM0Z+OD51qkkuO4c0nxlPOxvDPBmrPY5hvgzUwCts85GdmaobVwugpqxoDTICSHgbtYeLlUO7UeLD5fSHn6Ffgy9hw+Tt50oYDh4/sAl0Cgo9FGOQ3MdfSi/JfoWubRZi4k93xCjD7bjfoXoMYJQj+waljCKIboGcyXQPPTNE+JvcD1yomjedhJVj5DwKHJ1PJDHJA6ebbNOX90+24WtsA4h47qwmYfTMN2xNHmWwUsI3MbzIDRR18c7QLt1rfFNwngcEkRMb71o8yUGhVApCEKEAWEIUgEIQgMoQhQAQhCAEIQgBCEIAQhCAEIQgBCEIAQhCAFhZQiAIQhSAQhCAEIQgP/9k=",
                          ),
                        ),
                        Text("App/web name"),
                        Wrap(
                          spacing: 5,
                          runSpacing: 5,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Android"),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("iOS"),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Web"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
